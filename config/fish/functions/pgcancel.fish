function pgcancel
  command psql postgres -c "select pg_terminate_backend($argv)"
end
