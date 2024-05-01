FROM mcr.microsoft.com/azure-cli

RUN apk add curl && \
    apk -U upgrade && \
    curl -LO https://aka.ms/downloadazcopy-v10-linux && \
    tar -xf downloadazcopy-v10-linux -C / && \
    cp /azcopy_linux_amd64_*/azcopy /azcopy && \
    chmod +x /azcopy