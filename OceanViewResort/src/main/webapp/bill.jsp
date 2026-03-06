<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate Bill | Ocean View Resort</title>
    
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .bill-container {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 20px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            animation: slideUp 0.5s ease;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }

        .header-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% {
                box-shadow: 0 0 0 0 rgba(102, 126, 234, 0.4);
            }
            70% {
                box-shadow: 0 0 0 20px rgba(102, 126, 234, 0);
            }
            100% {
                box-shadow: 0 0 0 0 rgba(102, 126, 234, 0);
            }
        }

        .header-icon i {
            font-size: 36px;
            color: white;
        }

        h2 {
            color: #2d3748;
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .subtitle {
            color: #718096;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .resort-name {
            color: #667eea;
            font-weight: 600;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .currency-badge {
            background: #fef3c7;
            color: #92400e;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 15px;
        }

        .currency-badge i {
            color: #fbbf24;
        }

        .search-section {
            background: #f7fafc;
            border-radius: 15px;
            padding: 25px;
            margin-bottom: 25px;
            border: 2px dashed #e2e8f0;
        }

        .input-group {
            text-align: left;
            margin-bottom: 20px;
        }

        label {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #4a5568;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        label i {
            color: #667eea;
        }

        .input-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }

        .input-icon {
            position: absolute;
            left: 12px;
            color: #a0aec0;
            font-size: 16px;
        }

        input {
            width: 100%;
            padding: 14px 14px 14px 45px;
            border: 2px solid #e2e8f0;
            border-radius: 12px;
            font-size: 16px;
            transition: all 0.3s ease;
            outline: none;
            font-family: 'Poppins', sans-serif;
        }

        input:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        input:hover {
            border-color: #cbd5e0;
        }

        .quick-actions {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            margin-top: 15px;
        }

        .quick-btn {
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            padding: 8px 15px;
            font-size: 13px;
            color: #4a5568;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .quick-btn:hover {
            background: #667eea;
            color: white;
            border-color: #667eea;
            transform: translateY(-2px);
        }

        .quick-btn i {
            font-size: 12px;
        }

        .bill-preview {
            background: linear-gradient(135deg, #1a202c 0%, #2d3748 100%);
            border-radius: 15px;
            padding: 25px;
            color: white;
            margin-bottom: 25px;
            display: none;
        }

        .bill-preview.active {
            display: block;
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .bill-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 2px solid rgba(255,255,255,0.1);
        }

        .bill-header h3 {
            font-size: 20px;
            font-weight: 600;
        }

        .bill-header span {
            font-size: 14px;
            color: #a0aec0;
        }

        .guest-details {
            background: rgba(255,255,255,0.1);
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 20px;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 8px;
            font-size: 14px;
        }

        .detail-row:last-child {
            margin-bottom: 0;
        }

        .detail-label {
            color: #a0aec0;
        }

        .detail-value {
            color: white;
            font-weight: 500;
        }

        .bill-items {
            margin-bottom: 20px;
        }

        .bill-item {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .item-name {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .item-name i {
            color: #667eea;
            width: 20px;
        }

        .item-price {
            font-weight: 600;
            font-family: 'Poppins', sans-serif;
        }

        .bill-summary {
            background: rgba(102, 126, 234, 0.2);
            border-radius: 10px;
            padding: 15px;
            margin-top: 20px;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 8px;
            font-size: 14px;
        }

        .summary-row.total {
            border-top: 2px solid rgba(255,255,255,0.2);
            margin-top: 8px;
            padding-top: 8px;
            font-weight: 700;
            font-size: 18px;
        }

        .currency-symbol {
            font-weight: 600;
            margin-right: 2px;
        }

        .button-group {
            display: flex;
            flex-direction: column;
            gap: 12px;
            margin-top: 25px;
        }

        .btn {
            padding: 14px;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            text-decoration: none;
            width: 100%;
        }

        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(102, 126, 234, 0.5);
        }

        .btn-success {
            background: linear-gradient(135deg, #48bb78 0%, #38a169 100%);
            color: white;
            box-shadow: 0 4px 15px rgba(72, 187, 120, 0.4);
            display: none;
        }

        .btn-success.active {
            display: flex;
        }

        .btn-success:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(72, 187, 120, 0.5);
        }

        .btn-secondary {
            background: #edf2f7;
            color: #4a5568;
        }

        .btn-secondary:hover {
            background: #e2e8f0;
            transform: translateY(-2px);
        }

        .payment-methods {
            display: flex;
            gap: 10px;
            justify-content: center;
            margin-top: 15px;
            opacity: 0.7;
        }

        .payment-methods i {
            font-size: 24px;
            color: #4a5568;
        }

        .recent-bills {
            margin-top: 25px;
            padding-top: 20px;
            border-top: 1px solid #e2e8f0;
        }

        .recent-bills h4 {
            color: #4a5568;
            font-size: 14px;
            margin-bottom: 12px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .bill-history {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .history-item {
            background: #f7fafc;
            border: 1px solid #e2e8f0;
            border-radius: 20px;
            padding: 6px 14px;
            font-size: 13px;
            color: #4a5568;
            cursor: pointer;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .history-item:hover {
            background: #667eea;
            color: white;
            border-color: #667eea;
            transform: translateY(-1px);
        }

        .print-options {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }

        .print-btn {
            flex: 1;
            padding: 8px;
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            font-size: 13px;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
        }

        .print-btn:hover {
            background: #667eea;
            color: white;
            border-color: #667eea;
        }

        /* Sri Lankan theme elements */
        .sri-lanka-badge {
            background: linear-gradient(135deg, #8B1538 0%, #FFB81C 100%);
            color: white;
            padding: 4px 10px;
            border-radius: 15px;
            font-size: 12px;
            display: inline-flex;
            align-items: center;
            gap: 5px;
            margin-left: 10px;
        }

        .sri-lanka-badge i {
            color: #FFB81C;
        }

        @media (max-width: 480px) {
            .bill-container {
                padding: 25px;
            }
            
            .quick-actions {
                justify-content: center;
            }
        }
    </style>
</head>
<body>

<div class="bill-container">
    <div class="header">
        <div class="header-icon">
            <i class="fas fa-file-invoice-dollar"></i>
        </div>
        <h2>Generate Bill</h2>
        <div class="resort-name">
            Ocean View Resort 
            <span class="sri-lanka-badge">
                <i class="fas fa-leaf"></i> Sri Lanka
            </span>
        </div>
        <div class="currency-badge">
            <i class="fas fa-coins"></i>
            All amounts in Sri Lankan Rupees (LKR)
        </div>
        <p class="subtitle">Enter reservation ID to view and generate invoice</p>
    </div>

    <div class="search-section">
        <form action="BillServlet" method="post" id="billForm" onsubmit="return validateAndSearch()">
            <div class="input-group">
                <label>
                    <i class="fas fa-hashtag"></i>
                    Reservation ID
                </label>
                <div class="input-wrapper">
                    <i class="fas fa-id-card input-icon"></i>
                    <input 
                        type="number" 
                        name="reservationId" 
                        id="reservationId"
                        placeholder="Enter reservation ID (e.g., 1001)" 
                        required 
                        min="1"
                        step="1"
                        autocomplete="off"
                    />
                </div>
            </div>

            <button type="submit" class="btn btn-primary" id="searchBtn">
                <i class="fas fa-search"></i>
                Search & Generate Bill
            </button>
        </form>

        <div class="quick-actions">
            <div class="quick-btn" onclick="quickFill(1001)">
                <i class="fas fa-bolt"></i>
                Last Bill #1001
            </div>
            <div class="quick-btn" onclick="quickFill(1002)">
                <i class="fas fa-bolt"></i>
                #1002
            </div>
            <div class="quick-btn" onclick="quickFill(1003)">
                <i class="fas fa-bolt"></i>
                #1003
            </div>
            <div class="quick-btn" onclick="quickFill(1004)">
                <i class="fas fa-bolt"></i>
                #1004
            </div>
        </div>
    </div>

    <!-- Bill Preview Section with LKR amounts -->
    <div class="bill-preview active" id="billPreview">
        <div class="bill-header">
            <div>
                <h3>INVOICE</h3>
                <span>#INV-2024-001</span>
            </div>
            <div>
                <i class="fas fa-check-circle success-check" style="color: #48bb78; font-size: 24px;"></i>
            </div>
        </div>

        <div class="guest-details">
            <div class="detail-row">
                <span class="detail-label">Guest Name:</span>
                <span class="detail-value">John Smith</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Check-in:</span>
                <span class="detail-value">Mar 15, 2024</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Check-out:</span>
                <span class="detail-value">Mar 18, 2024</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Room:</span>
                <span class="detail-value">Deluxe Suite - Room 405</span>
            </div>
        </div>

        <div class="bill-items">
            <div class="bill-item">
                <div class="item-name">
                    <i class="fas fa-bed"></i>
                    <span>Room Charges (3 nights)</span>
                </div>
                <div class="item-price">LKR 44,700</div>
            </div>
            <div class="bill-item">
                <div class="item-name">
                    <i class="fas fa-utensils"></i>
                    <span>Restaurant</span>
                </div>
                <div class="item-price">LKR 8,550</div>
            </div>
            <div class="bill-item">
                <div class="item-name">
                    <i class="fas fa-glass-cheers"></i>
                    <span>Mini Bar</span>
                </div>
                <div class="item-price">LKR 3,200</div>
            </div>
            <div class="bill-item">
                <div class="item-name">
                    <i class="fas fa-spa"></i>
                    <span>Spa Service</span>
                </div>
                <div class="item-price">LKR 12,000</div>
            </div>
            <div class="bill-item">
                <div class="item-name">
                    <i class="fas fa-swimmer"></i>
                    <span>Beach Access</span>
                </div>
                <div class="item-price">LKR 2,500</div>
            </div>
        </div>

        <div class="bill-summary">
            <div class="summary-row">
                <span>Subtotal:</span>
                <span>LKR 70,950</span>
            </div>
            <div class="summary-row">
                <span>Tax (10%):</span>
                <span>LKR 7,095</span>
            </div>
            <div class="summary-row">
                <span>Service Charge:</span>
                <span>LKR 2,500</span>
            </div>
            <div class="summary-row">
                <span>NBT (2%):</span>
                <span>LKR 1,419</span>
            </div>
            <div class="summary-row total">
                <span>Total Amount:</span>
                <span>LKR 81,964</span>
            </div>
        </div>

        <div class="print-options">
            <button class="print-btn" onclick="printBill()">
                <i class="fas fa-print"></i>
                Print Bill
            </button>
            <button class="print-btn" onclick="downloadPDF()">
                <i class="fas fa-file-pdf"></i>
                Download PDF
            </button>
            <button class="print-btn" onclick="emailBill()">
                <i class="fas fa-envelope"></i>
                Email
            </button>
        </div>
    </div>

    <div class="button-group">
        <button class="btn btn-success" id="paymentBtn" onclick="processPayment()">
            <i class="fas fa-credit-card"></i>
            Process Payment (LKR)
        </button>
        
        <a href="dashboard.jsp" class="btn btn-secondary">
            <i class="fas fa-arrow-left"></i>
            Back to Dashboard
        </a>
    </div>

    <div class="recent-bills">
        <h4>
            <i class="fas fa-history"></i>
            Recent Bills (LKR)
        </h4>
        <div class="bill-history">
            <div class="history-item" onclick="loadBill(1001)">
                <i class="fas fa-file-invoice"></i>
                #1001 - LKR 81,964
            </div>
            <div class="history-item" onclick="loadBill(1002)">
                <i class="fas fa-file-invoice"></i>
                #1002 - LKR 45,550
            </div>
            <div class="history-item" onclick="loadBill(1003)">
                <i class="fas fa-file-invoice"></i>
                #1003 - LKR 1,24,500
            </div>
            <div class="history-item" onclick="loadBill(1004)">
                <i class="fas fa-file-invoice"></i>
                #1004 - LKR 89,900
            </div>
        </div>
    </div>

    <div class="payment-methods">
        <i class="fas fa-money-bill-wave" style="color: #2d3748;"></i>
        <i class="fas fa-credit-card" style="color: #2d3748;"></i>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Visa_Electron.svg/2560px-Visa_Electron.svg.png" alt="Visa" style="height: 20px; opacity: 0.7;">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png" alt="Mastercard" style="height: 20px; opacity: 0.7;">
        <i class="fab fa-cc-amex" style="color: #2d3748;"></i>
    </div>

    <div style="text-align: center; margin-top: 15px; font-size: 12px; color: #718096;">
        <i class="fas fa-exchange-alt"></i> Exchange Rate: 1 USD = LKR 320 (For reference only)
    </div>
</div>

<script>
    // Quick fill reservation ID
    function quickFill(id) {
        document.getElementById('reservationId').value = id;
        document.getElementById('reservationId').style.backgroundColor = '#fef3c7';
        setTimeout(() => {
            document.getElementById('reservationId').style.backgroundColor = '';
        }, 500);
    }

    // Validate and search
    function validateAndSearch() {
        const resId = document.getElementById('reservationId').value;
        
        if (resId <= 0) {
            alert('Please enter a valid reservation ID');
            return false;
        }

        // Show loading state
        const searchBtn = document.getElementById('searchBtn');
        searchBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Searching...';
        searchBtn.disabled = true;

        // Show bill preview (simulated - replace with actual servlet response)
        setTimeout(() => {
            document.getElementById('billPreview').classList.add('active');
            document.getElementById('paymentBtn').classList.add('active');
            searchBtn.innerHTML = '<i class="fas fa-search"></i> Search & Generate Bill';
            searchBtn.disabled = false;
        }, 1500);

        return true; // Allow form submission
    }

    // Load bill from history
    function loadBill(id) {
        document.getElementById('reservationId').value = id;
        document.getElementById('billPreview').classList.add('active');
        document.getElementById('paymentBtn').classList.add('active');
        
        // Scroll to bill preview
        document.getElementById('billPreview').scrollIntoView({ behavior: 'smooth' });
    }

    // Process payment
    function processPayment() {
        if (confirm('Process payment for this bill in LKR?')) {
            const paymentBtn = document.getElementById('paymentBtn');
            paymentBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Processing...';
            paymentBtn.disabled = true;
            
            // Simulate payment processing
            setTimeout(() => {
                alert('✅ Payment processed successfully! (LKR ' + getRandomAmount() + ')');
                paymentBtn.innerHTML = '<i class="fas fa-check-circle"></i> Payment Complete';
                paymentBtn.style.background = 'linear-gradient(135deg, #48bb78 0%, #38a169 100%)';
            }, 2000);
        }
    }

    // Helper function for random amount
    function getRandomAmount() {
        const amounts = ['81,964', '45,550', '1,24,500', '89,900'];
        return amounts[Math.floor(Math.random() * amounts.length)];
    }

    // Print bill
    function printBill() {
        window.print();
    }

    // Download PDF (simulated)
    function downloadPDF() {
        alert('📄 Downloading PDF bill in LKR...');
        // Implement actual PDF generation
    }

    // Email bill (simulated)
    function emailBill() {
        const email = prompt('Enter email address to send bill:');
        if (email) {
            alert(`📧 Bill sent to ${email} (Amount in LKR)`);
        }
    }

    // Keyboard shortcut (Ctrl + G for Generate Bill)
    document.addEventListener('keydown', function(e) {
        if (e.ctrlKey && e.key === 'g') {
            e.preventDefault();
            document.getElementById('billForm').dispatchEvent(new Event('submit'));
        }
    });

    // Auto-format and validate input
    document.getElementById('reservationId').addEventListener('input', function() {
        if (this.value < 0) this.value = 1;
    });

    // Format LKR amounts with commas
    function formatLKR(amount) {
        return 'LKR ' + amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }

    // Add animation on page load
    window.addEventListener('load', function() {
        console.log('Bill Calculator ready! (LKR Currency)');
    });
</script>

</body>
</html>