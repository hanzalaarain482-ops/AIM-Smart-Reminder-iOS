#!/bin/bash
set -euo pipefail
npm ci 2>/dev/null || npm install
npm run build
if [ ! -d ios/App ]; then npx cap add ios; fi
npx cap sync ios
