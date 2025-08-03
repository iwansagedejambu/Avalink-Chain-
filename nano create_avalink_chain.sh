#!/bin/bash
# Avalink Chain Project Generator for Retro9000

PROJECT="avalink-chain"
ZIPFILE="$PROJECT.zip"

echo "📦 Membuat struktur proyek $PROJECT..."
mkdir -p $PROJECT/{subnet-config,explorer,website,docs,scripts}

# Genesis Subnet
cat > $PROJECT/subnet-config/genesis.json <<EOL
{
  "config": {
    "chainId": 56789,
    "homesteadBlock": 0,
    "eip150Block": 0,
    "eip155Block": 0,
    "eip158Block": 0,
    "byzantiumBlock": 0,
    "constantinopleBlock": 0,
    "petersburgBlock": 0,
    "istanbulBlock": 0,
    "londonBlock": 0
  },
  "nonce": "0x0",
  "timestamp": "0x00",
  "extraData": "",
  "gasLimit": "0x2fefd8",
  "difficulty": "0x1",
  "mixHash": "0x0000000000000000000000000000000000000000000000000000000000000000",
  "coinbase": "0x0000000000000000000000000000000000000000",
  "alloc": {}
}
EOL

# Website Landing Page
cat > $PROJECT/website/index.html <<EOL
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Avalink Chain</title>
  <style>
    body { font-family: Arial, sans-serif; text-align: center; background: linear-gradient(135deg, #E84142, #1B1F3B); color: white; }
    header { padding: 50px; }
    .button { background: white; color: #E84142; padding: 10px 20px; text-decoration: none; border-radius: 5px; }
  </style>
</head>
<body>
<header>
  <h1>🚀 Avalink Chain</h1>
  <p>High-speed Avalanche Layer‑1 with cross-chain connectivity powered by Interchain Messaging (ICM).</p>
  <a href="#features" class="button">Learn More</a>
</header>
<section id="features">
  <h2>🌟 Features</h2>
  <p>• Cross-chain ICM<br>• Ultra-low fees<br>< 2s finality<br>• Open-source SDK<br>• Avalanche Subnet security</p>
</section>
<footer>
  <p>&copy; 2025 Avalink Chain. Built on Avalanche.</p>
</footer>
</body>
</html>
EOL

# README
cat > $PROJECT/README.md <<EOL
# Avalink Chain — Avalanche L1 Subnet
Avalink Chain adalah Avalanche Layer‑1 berbasis Subnet untuk komunikasi lintas blockchain menggunakan **ICM (Interchain Messaging)**.

## 🚀 Fitur Utama
- Interoperabilitas lintas L1
- Biaya transaksi rendah
- Finalitas <2 detik
- Open-source SDK untuk developer
- Keamanan Avalanche Subnet

## 📦 Install & Deploy
\`\`\`bash
# Install Avalanche CLI
curl -sSfL https://raw.githubusercontent.com/ava-labs/avalanche-cli/main/scripts/install.sh | sh

# Buat subnet
avalanche subnet create Avalink

# Deploy ke testnet
avalanche subnet deploy Avalink --network fuji

# Deploy ke mainnet
avalanche subnet deploy Avalink --network mainnet
\`\`\`

## 📡 RPC Endpoint
Segera setelah subnet live di mainnet.

## 🔍 Explorer
Akan tersedia di [explorer link].

## 📜 License
MIT
EOL

# LICENSE
cat > $PROJECT/LICENSE <<EOL
MIT License
Copyright (c) 2025
Permission is hereby granted...
EOL

# Deploy Script
cat > $PROJECT/scripts/deploy.sh <<EOL
#!/bin/bash
echo "🚀 Deploying Avalink Chain..."
avalanche subnet create Avalink --evm --chain-id 56789 --token-name Avalink --symbol AVLK --supply 1000000000
avalanche subnet deploy Avalink --network fuji
EOL
chmod +x $PROJECT/scripts/deploy.sh

# Explorer Instructions
cat > $PROJECT/explorer/README.md <<EOL
# Avalink Explorer
Avalink Chain Explorer built using Avalanche Subnet Explorer Template.

## Run Locally
\`\`\`bash
git clone https://github.com/ava-labs/subnet-explorer.git
cd subnet-explorer
npm install
npm start
\`\`\`
EOL

# ZIP project
zip -r $ZIPFILE $PROJECT >/dev/null
echo "✅ Proyek Avalink Chain selesai!"
echo "📄 Folder: $PROJECT"
echo "📦 ZIP File: $ZIPFILE"
echo "🚀 Siap di-upload ke GitHub & submit ke Retro9000!"
