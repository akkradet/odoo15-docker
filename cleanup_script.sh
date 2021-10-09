#!/bin/bash
pg_container="db"
pg_user="odoo"
db="odoo_pos"
psql="docker exec -it $pg_container psql -U $pg_user $db"

# POS
$psql -c "delete from pos_order_line"
$psql -c "delete from pos_order"
$psql -c "delete from stock_move_line"
$psql -c "delete from stock_move"
$psql -c "delete from pos_session;"