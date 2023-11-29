import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["categorySelect", "subCategoryField", "subCategorySelect"]

  connect() {
    // console.log("coucou");
  }

  display() {
    // console.log("coucou");
    // console.log(this.categorySelectTarget);
    // console.log(this.subCategoryFieldTarget);
    // console.log(this.subCategorySelectTarget);
    const categoryId = this.categorySelectTarget.value;
    // console.log(categoryId);
      if (categoryId !== '') {
        fetch('/foods?category_id=' + categoryId)
          .then(response => response.json())
          .then(data => {
            // console.log(data);
            // console.log("coucou");
            this.subCategorySelectTarget.innerHTML = '<option value="">Sélectionnez une sous-catégorie</option>';
            data.forEach(subCategoryTarget => {
              const option = document.createElement('option');
              console.log(option);
              option.value = subCategoryTarget.id;
              option.text = subCategoryTarget.name;
              this.subCategorySelectTarget.add(option);
            });
            this.subCategoryFieldTarget.style.display = 'block';
          })
      } else {
        this.subCategoryFieldTarget.style.display = 'none';
      }
  }
}

// <%# <script>
//   document.addEventListener('DOMContentLoaded', function() {
//     var categorySelect = document.getElementById('category-select');
//     var subCategoryField = document.getElementById('sub-category-field');
//     var subCategorySelect = document.getElementById('sub-category-select');

//     categorySelect.addEventListener('change', function() {
//       var categoryId = categorySelect.value;
//       if (categoryId !== '') {
//         fetch('/categoris?category_id=' + categoryId)
//           .then(response => response.json())
//           .then(data => {
//             subCategorySelect.innerHTML = '<option value="">Sélectionnez une sous-catégorie</option>';
//             data.forEach(subCategory => {
//               var option = document.createElement('option');
//               option.value = subCategory.id;
//               option.text = subCategory.name;
//               subCategorySelect.add(option);
//             });
//             subCategoryField.style.display = 'block';
//           })
//       } else {
//         subCategoryField.style.display = 'none';
//       }
//     });
//   });
// </script> %>
