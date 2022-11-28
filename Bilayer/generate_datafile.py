#!/usr/bin/env python
# coding: utf-8

# https://github.com/mosdef-hub/mbuild/issues/966
import mbuild
import foyer

import warnings
warnings.filterwarnings("ignore")

OctaneO_unparametrized = mbuild.load("OCCCCCCCO", smiles=True)
OctaneO_unparametrized.name = "OctaneO"

box = mbuild.Box(3 * [4])

filled_box = mbuild.fill_box(compound=OctaneO_unparametrized, n_compounds=200, box=box)

ff = foyer.Forcefield(name="oplsaa")
filled_box_parmed = filled_box.to_parmed(infer_residues=True)
filled_box_parmed_parametrized = ff.apply(filled_box_parmed) #parmed.Structure

mbuild.formats.lammpsdata.write_lammpsdata(
   filled_box_parmed_parametrized, 
   "OctaneO.data",
   atom_style="full",
   unit_style="real",
   use_rb_torsions=True,
)
