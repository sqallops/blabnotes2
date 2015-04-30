Experiment.delete_all
Project.delete_all
Project.create!(title: "Catalyzed Benzonitrile Amidation",
	description: 
	  %{<p>
	    The purpose of this study is to find the conditions for catalyzing benzonitrile reactions to benzamides and substituted benzamides. This study includes optimizations for type of catalyst (Cu, Pd), ligand, temperature, time, solvent, and stoichiometry.
		
		Update: several copper catalysts have been tried and CuI gives the best results
		</p>})
		
Project.create!(title: "Electrodeposition conditions on growing Cu2O crystals",
	description: 
	  %{<p>
	    The purpose of this study is to find the conditions for electrodepositing Cu2O crystals of different morphologies, densities, and sizes on ITO substrates.
		
		Update: several time trials have been tried
		</p>})
		
projects = Project.all	
p1 = Project.where("title = 'Catalyzed Benzonitrile Amidation'")[0]
p2 = Project.where("title = 'Electrodeposition conditions on growing Cu2O crystals'")[0]	


Experiment.create!(title: "CuBr Catalyzed Amidation 1", 
	procedure: 
	  %{<p>
		5mg of CuBr was added to 100mL of 1,4-dioxane, 1.6mL benzonitrile and 2g of iodobenzene in a round bottom flask purged with nitrogen gas. The reaction was stirred at 60C for 6 hours. Product was purified by flash column chromatography using 0-100% methanol (in water or something).
		</p>},
	image_url:		'scheme_example.gif', 
	date_started: "2015-04-01",
	project_id: p1.id)
	
Experiment.create!(title: "CuI Catalyzed Amidation 2", 
	procedure: 
	  %{<p>
		5mg of CuI was added to 100mL of 1,4-dioxane, 1.6mL benzonitrile and 2g of iodobenzene in a round bottom flask purged with nitrogen gas. The reaction was stirred at 60C for 6 hours. Product was purified by flash column chromatography using 0-100% methanol (in water or something).
		</p>},
	image_url:		'scheme_example.gif', 
	date_started: "2015-04-10",
	project_id: p1.id)

Experiment.create!(title: "CuCl Catalyzed Amidation 3", 
	procedure: 
	  %{<p>
		5mg of CuCl was added to 100mL of 1,4-dioxane, 1.6mL benzonitrile and 2g of iodobenzene in a round bottom flask purged with nitrogen gas. The reaction was stirred at 60C for 6 hours. Product was purified by flash column chromatography using 0-100% methanol (in water or something).
		</p>},
	image_url:		'scheme_example.gif', 
	date_started: "2015-04-03",
	project_id: p1.id)	
	
Experiment.create!(title: "30 min Cu2O electrodeposition", 
	procedure: 
	  %{<p>
		Cu2O was deposited on a 1cm x 1cm ITO glass substrate as the working electrode and a 1cm x 2xm Pt sheet as the auxillary electrode. The experiment was run in 0.2 M copper sulfite solution at pH 6 for 30 minutes at 5V. 
		</p>},
	image_url: 'blank.gif', 
	date_started: "2015-03-03",
	project_id: p2.id)

Experiment.create!(title: "1 hour Cu2O electrodeposition", 
	procedure: 
	  %{<p>
		Cu2O was deposited on a 1cm x 1cm ITO glass substrate as the working electrode and a 1cm x 2xm Pt sheet as the auxillary electrode. The experiment was run in 0.2 M copper sulfite solution at pH 6 for 60 minutes at 5V. 
		</p>},
	image_url: 'blank.gif', 
	date_started: "2015-03-09",
	project_id: p2.id)	
	
Experiment.create!(title: "10 min Cu2O electrodeposition", 
	procedure: 
	  %{<p>
		Cu2O was deposited on a 1cm x 1cm ITO glass substrate as the working electrode and a 1cm x 2xm Pt sheet as the auxillary electrode. The experiment was run in 0.2 M copper sulfite solution at pH 6 for 10 minutes at 5V. 
		</p>},
	image_url: 'blank.gif', 
	date_started: "2015-03-05",
	project_id: p2.id)




		