import random
from datetime import datetime, timedelta

# Liste simplifiée des départements par région (échantillon)
region_id = {
    1 : "Auvergne-Rhône-Alpes",
    2 : "Bourgogne-Franche-Comté",
    3 : "Bretagne",
    4 : "Centre-Val de Loire",
    5 : "Corse",
    6 : "Grand Est",
    7 : "Hauts-de-France",
    8 : "Île-de-France",
    9 : "Normandie",
    10 : "Nouvelle-Aquitaine",
    11 :"Occitanie",
    12 :"Pays de la Loire",
    13 : "Provence-Alpes-Côte d'Azur"
}


agence_id = {
    1 : "Lyon",
    2 : "Dijon",
    3 : "Rennes",
    4 : "Orléans",
    5 : "Ajaccio",
    6 : "Strasbourg",
    7 : "Lille",
    8 : "Paris",
    9 : "Rouen",
    10 : "Bordeaux",
    11 :"Toulouse",
    12 :"Nantes",
    13 : "Marseille",
    14 : "Limoges"
}

regions_departements = {
    "Auvergne-Rhône-Alpes": ["01", "03", "07", "15", "26", "38", "42", "43", "63", "69", "73", "74"],
    "Bourgogne-Franche-Comté": ["21", "25", "39", "58", "70", "71", "89", "90"],
    "Bretagne": ["22", "29", "35", "56"],
    "Centre-Val de Loire": ["18", "28", "36", "37", "41", "45"],
    "Corse": ["2A", "2B"],
    "Grand Est": ["08", "10", "51", "52", "54", "55", "57", "67", "68", "88"],
    "Hauts-de-France": ["02", "59", "60", "62", "80"],
    "Île-de-France": ["75", "77", "78", "91", "92", "93", "94", "95"],
    "Normandie": ["14", "27", "50", "61", "76"],
    "Nouvelle-Aquitaine": ["16", "17", "19", "23", "24", "33", "40", "47", "64", "79", "86", "87"],
    "Occitanie": ["09", "11", "12", "30", "31", "32", "34", "46", "48", "65", "66", "81", "82"],
    "Pays de la Loire": ["44", "49", "53", "72", "85"],
    "Provence-Alpes-Côte d'Azur": ["04", "05", "06", "13", "83", "84"]
}

departement_prefectures = {
    "01": "Bourg-en-Bresse", "02": "Laon", "03": "Moulins", "04": "Digne-les-Bains", "05": "Gap",
    "06": "Nice", "07": "Privas", "08": "Charleville-Mézières", "09": "Foix", "10": "Troyes",
    "11": "Carcassonne", "12": "Rodez", "13": "Marseille", "14": "Caen", "15": "Aurillac",
    "16": "Angoulême", "17": "La Rochelle", "18": "Bourges", "19": "Tulle", "2A": "Ajaccio",
    "2B": "Bastia", "21": "Dijon", "22": "Saint-Brieuc", "23": "Guéret", "24": "Périgueux",
    "25": "Besançon", "26": "Valence", "27": "Évreux", "28": "Chartres", "29": "Quimper",
    "30": "Nîmes", "31": "Toulouse", "32": "Auch", "33": "Bordeaux", "34": "Montpellier",
    "35": "Rennes", "36": "Châteauroux", "37": "Tours", "38": "Grenoble", "39": "Lons-le-Saunier",
    "40": "Mont-de-Marsan", "41": "Blois", "42": "Saint-Étienne", "43": "Le Puy-en-Velay",
    "44": "Nantes", "45": "Orléans", "46": "Cahors", "47": "Agen", "48": "Mende",
    "49": "Angers", "50": "Saint-Lô", "51": "Châlons-en-Champagne", "52": "Chaumont",
    "53": "Laval", "54": "Nancy", "55": "Bar-le-Duc", "56": "Vannes", "57": "Metz",
    "58": "Nevers", "59": "Lille", "60": "Beauvais", "61": "Alençon", "62": "Arras",
    "63": "Clermont-Ferrand", "64": "Pau", "65": "Tarbes", "66": "Perpignan",
    "67": "Strasbourg", "68": "Colmar", "69": "Lyon", "70": "Vesoul", "71": "Mâcon",
    "72": "Le Mans", "73": "Chambéry", "74": "Annecy", "75": "Paris", "76": "Rouen",
    "77": "Melun", "78": "Versailles", "79": "Niort", "80": "Amiens", "81": "Albi",
    "82": "Montauban", "83": "Toulon", "84": "Avignon", "85": "La Roche-sur-Yon",
    "86": "Poitiers", "87": "Limoges", "88": "Épinal", "89": "Auxerre", "90": "Belfort",
    "91": "Évry", "92": "Nanterre", "93": "Bobigny", "94": "Créteil", "95": "Cergy"
}


# Villes alternatives par département (hors préfecture)
# Créons un dictionnaire Python avec 3 à 4 villes pour chaque département (excluant les préfectures)
departement_villes = {
    "01": ["Oyonnax", "Bourg-en-Bresse", "Ambérieu-en-Bugey", "Bellegarde-sur-Valserine"],
    "02": ["Saint-Quentin", "Soissons", "Laon", "Château-Thierry"],
    "03": ["Vichy", "Montluçon", "Cusset", "Moulins"],
    "04": ["Manosque", "Sisteron", "Forcalquier", "Digne-les-Bains"],
    "05": ["Briançon", "Embrun", "Gap", "Laragne-Montéglin"],
    "06": ["Cannes", "Antibes", "Grasse", "Menton"],  # Préfecture = Nice (exclue volontairement)
    "07": ["Annonay", "Aubenas", "Le Teil", "Privas"],
    "08": ["Charleville-Mézières", "Sedan", "Rethel", "Givet"],
    "09": ["Pamiers", "Saint-Girons", "Foix", "Lavelanet"],
    "10": ["Troyes", "Romilly-sur-Seine", "Bar-sur-Aube", "Nogent-sur-Seine"],
    "11": ["Narbonne", "Limoux", "Carcassonne", "Lézignan-Corbières"],
    "12": ["Millau", "Villefranche-de-Rouergue", "Rodez", "Decazeville"],
    "13": ["Aix-en-Provence", "Arles", "Martigues", "Salon-de-Provence"],  # Marseille est exclue
    "14": ["Caen", "Lisieux", "Bayeux", "Hérouville-Saint-Clair"],
    "15": ["Aurillac", "Saint-Flour", "Mauriac", "Arpajon-sur-Cère"],
    "16": ["Angoulême", "Cognac", "Soyaux", "La Couronne"],
    "17": ["La Rochelle", "Rochefort", "Saintes", "Royan"],
    "18": ["Bourges", "Vierzon", "Saint-Amand-Montrond", "Mehun-sur-Yèvre"],
    "19": ["Tulle", "Brive-la-Gaillarde", "Ussel", "Malemort"],
    "2A": ["Ajaccio", "Sartène", "Porto-Vecchio", "Propriano"],
    "2B": ["Bastia", "Corte", "Calvi", "Île-Rousse"],
    "21": ["Dijon", "Beaune", "Montbard", "Chenôve"],
    "22": ["Saint-Brieuc", "Lannion", "Dinan", "Guingamp"],
    "23": ["Guéret", "La Souterraine", "Aubusson", "Bourganeuf"],
    "24": ["Périgueux", "Bergerac", "Sarlat-la-Canéda", "Terrasson-Lavilledieu"],
    "25": ["Besançon", "Montbéliard", "Pontarlier", "Audincourt"],
    "26": ["Valence", "Romans-sur-Isère", "Montélimar", "Bourg-lès-Valence"],
    "27": ["Évreux", "Louviers", "Vernon", "Val-de-Reuil"],
    "28": ["Chartres", "Dreux", "Lucé", "Châteaudun"],
    "29": ["Quimper", "Brest", "Morlaix", "Concarneau"],
    "30": ["Nîmes", "Alès", "Bagnols-sur-Cèze", "Beaucaire"],
    "31": ["Toulouse", "Muret", "Blagnac", "Colomiers"],
    "32": ["Auch", "Condom", "L'Isle-Jourdain", "Fleurance"],
    "33": ["Bordeaux", "Mérignac", "Pessac", "Talence"],
    "34": ["Montpellier", "Béziers", "Sète", "Lunel"],
    "35": ["Rennes", "Fougères", "Vitré", "Saint-Malo"],
    "36": ["Châteauroux", "Issoudun", "Le Blanc", "Argenton-sur-Creuse"],
    "37": ["Tours", "Joué-lès-Tours", "Saint-Pierre-des-Corps", "Chinon"],
    "38": ["Grenoble", "Échirolles", "Vienne", "Voiron"],
    "39": ["Lons-le-Saunier", "Dole", "Saint-Claude", "Champagnole"],
    "40": ["Mont-de-Marsan", "Dax", "Biscarrosse", "Saint-Paul-lès-Dax"],
    "41": ["Blois", "Vendôme", "Romorantin-Lanthenay", "Mer"],
    "42": ["Saint-Étienne", "Roanne", "Firminy", "Montbrison"],
    "43": ["Le Puy-en-Velay", "Brioude", "Yssingeaux", "Monistrol-sur-Loire"],
    "44": ["Nantes", "Saint-Nazaire", "Rezé", "Saint-Herblain"],
    "45": ["Orléans", "Montargis", "Gien", "Pithiviers"],
    "46": ["Cahors", "Figeac", "Gourdon", "Souillac"],
    "47": ["Agen", "Marmande", "Villeneuve-sur-Lot", "Nérac"],
    "48": ["Mende", "Marvejols", "Langogne", "Florac"],
    "49": ["Angers", "Cholet", "Saumur", "Avrillé"],
    "50": ["Saint-Lô", "Cherbourg-en-Cotentin", "Granville", "Avranches"],
    "51": ["Châlons-en-Champagne", "Reims", "Épernay", "Vitry-le-François"],
    "52": ["Chaumont", "Langres", "Saint-Dizier", "Nogent"],
    "53": ["Laval", "Mayenne", "Château-Gontier", "Évron"],
    "54": ["Nancy", "Lunéville", "Vandoeuvre-lès-Nancy", "Pont-à-Mousson"],
    "55": ["Bar-le-Duc", "Verdun", "Commercy", "Saint-Mihiel"],
    "56": ["Vannes", "Lorient", "Pontivy", "Ploërmel"],
    "57": ["Metz", "Thionville", "Forbach", "Sarreguemines"],
    "58": ["Nevers", "Cosne-Cours-sur-Loire", "Clamecy", "Decize"],
    "59": ["Lille", "Roubaix", "Tourcoing", "Dunkerque"],
    "60": ["Beauvais", "Compiègne", "Creil", "Senlis"],
    "61": ["Alençon", "Argentan", "Flers", "L'Aigle"],
    "62": ["Arras", "Calais", "Boulogne-sur-Mer", "Lens"],
    "63": ["Clermont-Ferrand", "Issoire", "Riom", "Cournon-d'Auvergne"],
    "64": ["Pau", "Bayonne", "Anglet", "Biarritz"],
    "65": ["Tarbes", "Lourdes", "Bagnères-de-Bigorre", "Vic-en-Bigorre"],
    "66": ["Perpignan", "Canet-en-Roussillon", "Saint-Estève", "Argelès-sur-Mer"],
    "67": ["Strasbourg", "Haguenau", "Schiltigheim", "Sélestat"],
    "68": ["Colmar", "Mulhouse", "Wittenheim", "Saint-Louis"],
    "69": ["Lyon", "Villeurbanne", "Vénissieux", "Vaulx-en-Velin"],
    "70": ["Vesoul", "Lure", "Héricourt", "Gray"],
    "71": ["Mâcon", "Chalon-sur-Saône", "Montceau-les-Mines", "Le Creusot"],
    "72": ["Le Mans", "La Flèche", "Sablé-sur-Sarthe", "Allonnes"],
    "73": ["Chambéry", "Albertville", "Aix-les-Bains", "Saint-Jean-de-Maurienne"],
    "74": ["Annecy", "Thonon-les-Bains", "Annemasse", "Cluses"],
    "75": ["Paris"],
    "76": ["Rouen", "Le Havre", "Dieppe", "Sotteville-lès-Rouen"],
    "77": ["Melun", "Meaux", "Chelles", "Fontainebleau"],
    "78": ["Versailles", "Mantes-la-Jolie", "Rambouillet", "Poissy"],
    "79": ["Niort", "Bressuire", "Parthenay", "Thouars"],
    "80": ["Amiens", "Abbeville", "Albert", "Péronne"],
    "81": ["Albi", "Castres", "Mazamet", "Gaillac"],
    "82": ["Montauban", "Castelsarrasin", "Moissac", "Caussade"],
    "83": ["Toulon", "Fréjus", "Draguignan", "La Seyne-sur-Mer"],
    "84": ["Avignon", "Carpentras", "Orange", "Cavaillon"],
    "85": ["La Roche-sur-Yon", "Les Sables-d'Olonne", "Challans", "Fontenay-le-Comte"],
    "86": ["Poitiers", "Châtellerault", "Montmorillon", "Loudun"],
    "87": ["Limoges", "Saint-Junien", "Bellac", "Panazol"],
    "88": ["Épinal", "Saint-Dié-des-Vosges", "Gérardmer", "Neufchâteau"],
    "89": ["Auxerre", "Sens", "Avallon", "Joigny"],
    "90": ["Belfort", "Delle", "Beaucourt", "Valdoie"],
    "91": ["Évry", "Corbeil-Essonnes", "Massy", "Savigny-sur-Orge"],
    "92": ["Nanterre", "Boulogne-Billancourt", "Colombes", "Asnières-sur-Seine"],
    "93": ["Bobigny", "Saint-Denis", "Montreuil", "Aubervilliers"],
    "94": ["Créteil", "Vitry-sur-Seine", "Ivry-sur-Seine", "Maisons-Alfort"],
    "95": ["Cergy", "Argenteuil", "Sarcelles", "Pontoise"]
}

rues_exemples = [
    "Rue Victor Hugo", "Avenue de la République", "Boulevard Haussmann",
    "Rue Nationale", "Rue des Lilas", "Chemin Vert", "Rue de la Gare","Boulevard de la Mer","Chemin des Rossignols",
    "Rue des Artistes","Rue du Throne"
]




"""# Générer des adresses aléatoires
def generate_addresses(n=10):
    addresses = []
    for _ in range(n):
        region = random.choice(list(region_id.keys()))
        departement = random.choice(regions_departements[region_id[region]])

        ville = random.choice(departement_villes[departement])
        prefecture = departement_prefectures[departement]
        rue = f'{random.choice(rues_exemples)} {random.randint(1, 300)}'
        code_postal = f"{departement}{random.randint(0, 999):03d}"
        #id_agence = random.randint(1, 13)  # ID agence fictif
        id_agence = region
        id_adresse = random.randint(1, 30)
        addresses.append((id_adresse, rue, ville, code_postal, region, id_agence, prefecture))
    return addresses"""

# Générer des adresses aléatoires
def generate_addresses(n=30):
    addresses = []
    for id_adresse in range(94, n + 1):  # De 1 à n inclus # ici les id sont éditables
    
        agence = random.choice(list(agence_id.keys()))
        region = agence
        if agence == 14:
            region = 10
            
        departement = random.choice(regions_departements[region_id[region]])
        ville = random.choice(departement_villes[departement])
        prefecture = departement_prefectures[departement]
        rue = f'{random.choice(rues_exemples)} {random.randint(1, 300)}'
        code_postal = f"{departement}{random.randint(0, 999):03d}"
        
        #id_agence = region  # même valeur que la région
        addresses.append((id_adresse, rue, ville, code_postal, agence, region, prefecture))
        
    return addresses


# Générer fichier .sql
def generate_sql_file(addresses, filename="insert_adresses2_2.sql"):
    with open(filename, "w", encoding="utf-8") as f:
        for addr in addresses:  
            f.write(
                f'INSERT INTO adresse (id_adresse, Rue, Ville, Code_postal,id_agence, id_region, préfecture) VALUES '
                f'({addr[0]}, "{addr[1]}", "{addr[2]}", "{addr[3]}", "{addr[4]}", {addr[5]}, "{addr[6]}");\n'
            )
    return filename

# Exécuter la génération
addresses = generate_addresses(103)
sql_file_path = generate_sql_file(addresses)
sql_file_path
