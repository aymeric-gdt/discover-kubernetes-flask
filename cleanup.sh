#!/bin/bash

# Fonction pour afficher l'aide
show_help() {
    echo "Usage: ./cleanup.sh [--remove-pv]"
    echo "  --remove-pv    Supprime également les PersistentVolumes"
}

kubectl delete -f database/ -f backend/ -f jobs/

# Vérification de l'argument pour la suppression des PV
if [ "$1" = "--remove-pv" ]; then
    echo "Suppression des PersistentVolumes..."
    kubectl delete pv --all
else
    echo "Les PersistentVolumes n'ont pas été supprimés. Utilisez --remove-pv pour les supprimer."
fi
