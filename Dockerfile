# Basis-Image verwenden (z.B. PostgreSQL 15)
FROM postgres:17

# Notwendige Pakete installieren: Build-Tools, PostgreSQL-Entwicklungspakete und git
RUN apt-get update && \
    apt-get install -y build-essential postgresql-server-dev-17 git

# pgvector aus dem GitHub-Repository klonen und installieren
RUN git clone https://github.com/pgvector/pgvector.git && \
    cd pgvector && \
    make && \
    make install && \
    cd .. && \
    rm -rf pgvector
