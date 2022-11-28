#!/usr/bin/env python
# coding: utf-8

# https://github.com/mosdef-hub/mbuild/issues/966
import mbuild
import foyer

import warnings
warnings.filterwarnings("ignore")

pentanol = mbuild.load("CCCCCO", smiles=True)
pentanol.name = "pentanol"
diEther = mbuild.load("COC", smiles=True)
diEther.name = "diEther" 

mol_box = mbuild.fill_box(compound=[pentanol,diEther],n_compounds=[50,50],box=[3,3,3])

ff = foyer.Forcefield(name="oplsaa")
filled_box_parmed = mol_box.to_parmed(infer_residues=True)
filled_box_parmed_parameterized = ff.apply(filled_box_parmed) #parmed.Structure

mbuild.formats.lammpsdata.write_lammpsdata(
   filled_box_parmed_parameterized, 
   "pentanol_diEther.data",
   atom_style="full",
   unit_style="real",
   use_rb_torsions=True,
)
