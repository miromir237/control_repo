class profile::agent_nodes {
  include docker:agent
  docketagent::node {'web.puppet.vm':}
  docketagent::node {'db.puppet.vm':}
}
