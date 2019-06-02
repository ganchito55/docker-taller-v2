var vue = new Vue({
  el: "#app",
  data: function ()  {
    return {
      activities: [],
      value: ""
    }
  },
  methods: {
    requestActivity: function (id) {
      alert(id);
    }
  },
  mounted() {
    axios
      .get('http://127.0.0.1:5000/api/activity')
      .then(function (response) {
        vue.$data.activities = response.data;
      });
    
    axios
      .get('http://localhost:8000/stats.php')
      .then(function(response){
        vue.$data.value = response.data.value;
      });
  },
})