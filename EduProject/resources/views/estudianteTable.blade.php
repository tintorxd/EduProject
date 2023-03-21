
<div class="container" style="padding: 40px">
    <div class="row">
    <div class="col-md-6">
      <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Estudiante/</span> Tabla Estudiantes</h4>
    </div>
    <div class="offset-md-3 col-md-3">
      @isset($error)
      <div class="alert alert-danger alert-dismissible d-flex align-items-center" role="alert">
          <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#check-circle-fill"/></svg>
        <div>
            No se pudo registrar al estudiante
        </div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
      </div>
      @endisset
      @isset($success)
      <div class="alert alert-success alert-dismissible d-flex align-items-center" role="alert">
          <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
        <div>
            Estudiante Registrado Correctamente
        </div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
      </div>
      @endisset
  </div>

    <table id="example" class="table table-striped display" style="width:100%">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Office</th>
                    <th>Age</th>
                    <th>Start date</th>
                    <th>Salary</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Tiger Nixon</td>
                    <td>System Architect</td>
                    <td>Edinburgh</td>
                    <td>61</td>
                    <td>2011-04-25</td>
                    <td>$320,800</td>
                </tr>
                <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011-07-25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009-01-12</td>
                <td>$86,000</td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012-03-29</td>
                <td>$433,060</td>
            </tr>
            </tbody>
    </table>
</div>
<script>
    $(document).ready(function () {
    $('#example').DataTable({
        "language": {
            "lengthMenu": "Mostrar _MENU_ filas por pagina",
            "zeroRecords": "No se encontraron los registros",
            "info": "Mostrando paginas _PAGE_ de _PAGES_",
            "infoEmpty": "No hay datos existentes",
            "infoFiltered": "(filtrado de _MAX_ total registros)",
            "search": "Buscar:",
            "paginate": {
                "next": "Siguiente",
                "previous": "Anterior"
            }
        },
        processing: true,
        ajax: '{{route("registerEstudent.show")}}',
        columns: [
            { data: 'names' },
            { data: 'fullnames' },
            { data: 'contact.0' },
            { data: 'contact.1' },
            { data: 'hr.start_date' },
            { data: 'hr.salary' },
        ],
    });
      });
</script>