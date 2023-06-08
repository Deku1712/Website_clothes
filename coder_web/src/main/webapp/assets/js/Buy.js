const checkboxes = document.querySelectorAll('input[type="checkbox"]');
const totalElem = document.getElementById('total');

// Tạo hàm tính tổng giá trị của các checkbox đã được chọn
function calculateTotal() {
    let total = 0;
    checkboxes.forEach((checkbox) => {
        if (checkbox.checked) {
        var divP = checkbox.closest("#productdata");
        var pTotal = divP.dataset.total;
        total += parseFloat(pTotal);
        }
    });
    totalElem.textContent = total;
    }

    // Gọi hàm tính tổng khi checkbox được click
    checkboxes.forEach((checkbox) => {
    checkbox.addEventListener('click', calculateTotal);
    });
calculateTotal();




