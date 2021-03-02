<template> 
  <product-detail :is-edit='true'></product-detail>
</template>
<script>
  import IncidentDetail from './components/IncidentDetail'
  export default {
    name: 'updateIncident',
    components: { IncidentDetail }
  }
</script>
<style>
</style>
