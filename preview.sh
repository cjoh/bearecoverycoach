#!/bin/bash
# Preview Be A Recovery Coach Hugo Site

echo "🚀 Starting Hugo preview server..."
echo ""
echo "📍 Open in your browser: http://localhost:1313"
echo ""
echo "Press Ctrl+C to stop"
echo ""

cd "$(dirname "$0")"
../bin/hugo server -D --bind 0.0.0.0 --baseURL http://localhost:1313
