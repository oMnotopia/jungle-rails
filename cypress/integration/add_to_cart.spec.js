describe('example to-do app', () => {
  beforeEach(() => {
    cy.visit('http://0.0.0.0:3000');
  });

  it("Add products to cart and have the cart image increase by 1", () => {
    cy.get('.nav-link').contains('Login').click();
    cy.get('#email').type('a@a.com');
    cy.get('#password').type('111');
    cy.get('input[name="commit"]').click();
    cy.get('button.btn').first().click({scrollBehavior:false, force: true});
    cy.get("li a").contains("1");
  });
});
