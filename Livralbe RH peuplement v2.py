import random
from datetime import datetime, timedelta

# Données de base
types_emplois = ["Chef d'agence", "Agent technique", "Agent administratif"]
noms = ["Martin", "Durand", "Lefebvre", "Moreau", "Garcia", "Petit", "Roux", "Faure", "Garnier", "Mercier"]
prenoms = ["Alice", "Jean", "Sophie", "Luc", "Emma", "Thomas", "Julie", "Nicolas", "Laura", "Hugo"]
diplomes_par_poste = {
    "Chef d'agence": ["Master Management", "MBA", "Master Gestion"],
    "Agent technique": ["BTS Électrotechnique", "Licence Pro Maintenance", "CAP Installateur"],
    "Agent administratif": ["BTS Assistant de Gestion", "Licence Administration", "DUT GEA"]
}

# Simulation des adresses avec leur agence correspondante (id_adresse: id_agence)
# Ici nous supposons qu'il y a au moins 3 adresses par agence (au total 42 adresses mini)
adresse_agence_map = {
    1: 1, 2: 1, 3: 1,
    4: 2, 5: 2, 6: 2,
    7: 3, 8: 3, 9: 3,
    10: 4, 11: 4, 12: 4,
    13: 5, 14: 5, 15: 5,
    16: 6, 17: 6, 18: 6,
    19: 7, 20: 7, 21: 7,
    22: 8, 23: 8, 24: 8,
    25: 9, 26: 9, 27: 9,
    28: 10, 29: 10, 30: 10,
    31: 11, 32: 11, 33: 11,
    34: 12, 35: 12, 36: 12,
    37: 13, 38: 13, 39: 13,
    40: 14, 41: 14, 42: 14
}


# Fonction pour générer un employé
def generer_employe(employe_id, id_adresse, id_agence, type_emploi):
    nom = random.choice(noms)
    prenom = random.choice(prenoms)
    diplome = random.choice(diplomes_par_poste[type_emploi])
    date_naissance = datetime.strptime("1965-01-01", "%Y-%m-%d") + timedelta(days=random.randint(7000, 14000))  # entre 1984 et 2003
    date_prise_poste = date_naissance + timedelta(days=random.randint(6570, 12775))  # entre 18 et 35 ans après naissance

    return (
        employe_id,
        date_naissance.date(),
        date_prise_poste.date(),
        type_emploi,
        nom,
        prenom,
        diplome,
        id_adresse,
        id_agence
    )

# Génération de tous les employés (1 de chaque type par agence)
def generer_tous_les_employes():
    employes = []
    employe_id = 1
    adresses_utilisees = set()

    for id_agence in range(1, 15):  # agences de 1 à 14
        # Sélectionner les adresses disponibles pour cette agence
        adresses_possibles = [id_adr for id_adr, agence in adresse_agence_map.items()
                              if agence == id_agence and id_adr not in adresses_utilisees]
        random.shuffle(adresses_possibles)
        for type_emploi in types_emplois:
            id_adresse = adresses_possibles.pop()
            adresses_utilisees.add(id_adresse)
            employes.append(generer_employe(employe_id, id_adresse, id_agence, type_emploi))
            employe_id += 1

    return employes

# Fonction pour écrire le fichier SQL
def generate_sql_file(employes, filename="insert_employes3.sql"):
    with open(filename, "w", encoding="utf-8") as f:
        for emp in employes:
            f.write(
                f'INSERT INTO Ressources_humaines (id_employe, date_de_naissance, date_prise_poste, type_emploie, Nom, Prénom, Diplome, id_adresse, id_agence) VALUES '
                f'({emp[0]}, "{emp[1]}", "{emp[2]}", "{emp[3]}", "{emp[4]}", "{emp[5]}", "{emp[6]}", {emp[7]}, {emp[8]});\n'
            )
    return filename

# Générer les données
employes = generer_tous_les_employes()
generate_sql_file(employes)
