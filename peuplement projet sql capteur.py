import random

# IDs disponibles (non utilisés par les employés)
available_adresse_ids = list(range(43, 93))  # 60 adresses, pour 50 capteurs

# Agents techniques identifiés manuellement (id_employe)
agents_techniques_ids = [
    2, 5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35, 38, 41
]

# Gaz disponibles
gaz_ids = [1, 2, 3, 4, 5, 6]

def generate_capteurs(n_capteurs=50):
    if n_capteurs > len(available_adresse_ids):
        raise ValueError("Pas assez d'adresses disponibles pour le nombre de capteurs demandés.")
    
    adresse_ids = random.sample(available_adresse_ids, n_capteurs)
    capteurs = []

    for i in range(1, n_capteurs + 1):
        id_adresse = adresse_ids[i - 1]
        id_gaz = random.choice(gaz_ids)
        id_employe = random.choice(agents_techniques_ids)
        
        # Plus de capteurs actifs (70% actifs environ)
        etat = True if random.random() < 0.7 else False

        capteurs.append((i, etat, id_adresse, id_gaz, id_employe))

    return capteurs

def generate_sql_file_capteurs(capteurs, filename="insert_capteurs.sql"):
    with open(filename, "w", encoding="utf-8") as f:
        for capteur in capteurs:
            id_capteur, etat, id_adresse, id_gaz, id_employe = capteur
            etat_str = "TRUE" if etat else "FALSE"
            f.write(
                f"INSERT INTO capteur (id_capteur, etat, id_adresse, id_gaz, id_employe) VALUES "
                f"({id_capteur}, {etat_str}, {id_adresse}, {id_gaz}, {id_employe});\n"
            )
    return filename

# Exemple d'utilisation
capteurs = generate_capteurs(50)
generate_sql_file_capteurs(capteurs)
