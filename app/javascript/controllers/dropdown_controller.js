import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["categorySelect", "subCategoryField", "subCategorySelect"]

  connect() {
    console.log("coucou");
  }

  display() {
    console.log(this.categorySelectTarget);
    console.log(this.subCategoryFieldTarget);
    console.log(this.subCategorySelectTarget);
    var categoryId = categorySelect.value;
      if (categoryId !== '') {
        fetch('/categoris?category_id=' + categoryId)
          .then(response => response.json())
          .then(data => {
            subCategorySelect.innerHTML = '<option value="">Sélectionnez une sous-catégorie</option>';
            data.forEach(subCategory => {
              var option = document.createElement('option');
              option.value = subCategory.id;
              option.text = subCategory.name;
              subCategorySelect.add(option);
            });
            subCategoryField.style.display = 'block';
          })
      } else {
        subCategoryField.style.display = 'none';
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
