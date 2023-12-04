FROM scratch

RUN addgroup --gid 1000 user
RUN adduser --uid 1000 --gid 1000 --disabled-password --gecos "" user

# Switch to user.
USER user

# Set working directory.
WORKDIR /usr/local/bin

# Copy the binary from the current directory to the /usr/local/bin directory in the image
COPY ./palm ./palm

# Make the binary executable
RUN chmod +x /usr/local/bin/palm

# Set the binary as the entry point of the image
ENTRYPOINT ["/usr/local/bin/palm"]
