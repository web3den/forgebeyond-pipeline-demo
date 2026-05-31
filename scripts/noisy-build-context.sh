#!/usr/bin/env bash
set -euo pipefail

echo "::group::Installing dependencies"
echo "Restoring Docker layer cache"
echo "Installing buildx plugin"
echo "Resolving npm metadata"
echo "Preparing image build context"
echo "::endgroup::"

echo "::group::Building application image"
docker build --progress=plain -t forgebeyond-demo-app:pr .
echo "::endgroup::"
