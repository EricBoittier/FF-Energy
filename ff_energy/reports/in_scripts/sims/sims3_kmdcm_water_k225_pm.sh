papermill templates/sim_template.ipynb out_notebooks/sims/sims3_kmdcm_water_k225.ipynb -k pycharmm -p jobpath  "/home/boittier/pcbach/sims3/kmdcm/water/k225/dynamics.log" -p NSAVC 1000 -p dt 0.0002

jupyter nbconvert --to webpdf --no-input out_notebooks/sims/sims3_kmdcm_water_k225.ipynb
mv out_notebooks/sims/sims3_kmdcm_water_k225.pdf out_pdfs/sims
mv sims3_kmdcm_water_k225*csv out_csvs/sims
