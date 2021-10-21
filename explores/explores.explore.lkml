include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: order_items {
  join: users {
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
    type: left_outer
  }
}
