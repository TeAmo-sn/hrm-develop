<template> 
  <incident-detail :is-edit='false'></incident-detail>
</template>
<script>
  import IncidentDetail from './components/IncidentDetail'
  export default {
    name: 'addIncident',
    components: { IncidentDetail }
  }
</script>
<style>
</style>
