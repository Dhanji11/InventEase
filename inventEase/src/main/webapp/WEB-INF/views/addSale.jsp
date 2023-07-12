<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>IMS</title>
</head>

<body>

    <div
            id="addSales"
            tabindex="-1"
            role="dialog"
            data-backdrop="static"
          >
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title t-primary">New Sales</h5>
                  <button
                    type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close"
                  >
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="" method="">

                    <div class="form-group">
                      <label for="customer">Customer Code</label>
                      <span class="f-10 text-muted"
                        >(Can be found on customer page)</span
                      >
                      <input
                        type="text"
                        class="form-control"
                        name="customer"
                        placeholder="Eg. CC01"
                        maxlength="11"
                        required
                      />
                    </div>

                    <div class="form-group">
                      <label for="product">Product Code</label>
                      <span class="f-10 text-muted"
                        >(Can be found on product page)</span
                      >
                      <input
                        type="text"
                        class="form-control product-input-query"
                        name="product"
                        placeholder="Eg. MBL-001-002"
                        required
                      />
                      <ul class="list-group product-input-query-group"></ul>
                    </div>

                    <div class="form-group">
                      <label for="quantity">Quantity</label>
                      <input
                        type="number"
                        class="form-control"
                        name="quantity"
                        placeholder="Eg. 50"
                        required
                      />
                    </div>

                    <div class="form-group">
                      <label for="deliveryDate">Sales Date</label>
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <i class="ic-calendar"></i>
                        </div>
                        <input
                          type="date"
                          class="form-control"
                          name="deliveryDate"
                        />
                      </div>
                    </div>

                    <div class="modal-footer">
                      <button
                        type="button"
                        class="btn btn-secondary"
                        data-dismiss="modal"
                      >
                        <i class="ic-cross"></i> Close
                      </button>
                      <button type="submit" class="btn btn-primary">
                        <i class="ic-check"></i> Save Changes
                      </button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

</body>

</html>