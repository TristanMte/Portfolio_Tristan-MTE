function calculerSousTotal() {
  // Récupération de toutes les lignes de la table
  const lignes = document.querySelectorAll('.fact tr:not(:first-child)');
  
  // Initialisation du sous-total
  let sousTotal = 0;
  
  // Boucle sur toutes les lignes de la table
  lignes.forEach((ligne) => {
    // Récupération des champs de quantité, prix unitaire et total
    const quantite = ligne.querySelector('[name="quantity"]').valueAsNumber;
    const prixUnitaire = ligne.querySelector('[name="unit_price"]').valueAsNumber;
    const total = ligne.querySelector('[name="total"]');
    
    // Calcul du total pour cette ligne
    const totalLigne = quantite * prixUnitaire;
    
    // Mise à jour du champ total de la ligne
    total.value = totalLigne;
    
    // Ajout du total de cette ligne au sous-total
    sousTotal += totalLigne;
  });
  
  // Mise à jour du champ sous-total
  document.querySelector('#sous-total').textContent = sousTotal;
}

function imprimer_page(){
  window.print();
}
