import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["categorySelect", "subCategoryField", "subCategorySelect", "secondCategorySelect", "secondSubCategoryField", "secondSubCategorySelect"]

  connect() {
    // console.log("coucou");
  }

  display(event) {
    event.preventDefault()
    const categoryId = this.categorySelectTarget.value;
    // console.log(categoryId);
      if (categoryId !== '') {
        fetch('/foods?category_id=' + categoryId)
          .then(response => response.json())
          .then(data => {
            // console.log(data);
            if (data.length === 0) {
              this.subCategoryFieldTarget.style.display = 'none';
            }
            else {
              this.subCategorySelectTarget.innerHTML = '<option value="">Sélectionnez une sous-catégorie</option>';
              data.forEach(subCategoryTarget => {
                const option = document.createElement('option');
                // console.log(option);
                option.value = subCategoryTarget.id;
                option.text = subCategoryTarget.name;
                this.subCategorySelectTarget.add(option);
                // console.log("coucou");
                // si categories = wine ou beer
                // sinon le menu déroulant de sous catégorie n'apparait pas
              });
              this.subCategoryFieldTarget.style.display = 'block';
            }
            })
      } else {
        this.subCategoryFieldTarget.style.display = 'none';
      }
  }

  secondDisplay(event) {
    event.preventDefault()
    const secondCategoryId = this.secondCategorySelectTarget.value;
    // console.log(secondCategoryId);
      if (secondCategoryId !== '') {
        fetch('/foods?second_category_id=' + secondCategoryId)
          .then(response => response.json())
          .then(data => {
            console.log(data);
            if (data.length === 0) {
              this.secondSubCategoryFieldTarget.style.display = 'none';
            }
            else {
              this.secondSubCategorySelectTarget.innerHTML = '<option value="">Sélectionnez une sous-catégorie</option>';
              data.forEach(secondSubCategoryTarget => {
                const secondOption = document.createElement('option');
                console.log(secondOption);
                secondOption.value = secondSubCategoryTarget.id;
                secondOption.text = secondSubCategoryTarget.name;
                this.secondSubCategorySelectTarget.add(secondOption);
      //           // console.log("coucou");
      //           // si categories = wine ou beer
      //           // sinon le menu déroulant de sous catégorie n'apparait pas
              });
              this.secondSubCategoryFieldTarget.style.display = 'block';
            }
            })
      } else {
        this.secondSubCategoryFieldTarget.style.display = 'none';
      }
  }
}
