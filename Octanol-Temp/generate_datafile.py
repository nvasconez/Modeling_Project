#!/usr/bin/env python
# coding: utf-8

# https://github.com/mosdef-hub/mbuild/issues/966
import mbuild
import foyer

import warnings
warnings.filterwarnings("ignore")

octanol_unparametrized = mbuild.load("CCCCCCCCO", smiles=True)
octanol_unparametrized.name = "octanol"

box = mbuild.Box(3 * [4])

filled_box = mbuild.fill_box(compound=octanol_unparametrized, n_compounds=200, box=box)

ff = foyer.Forcefield(name="oplsaa")
filled_box_parmed = filled_box.to_parmed(infer_residues=True)
filled_box_parmed_parametrized = ff.apply(filled_box_parmed) #parmed.Structure

mbuild.formats.lammpsdata.write_lammpsdata(
   filled_box_parmed_parametrized, 
   "octanol.data",
   atom_style="full",
   unit_style="real",
   use_rb_torsions=True,
)
