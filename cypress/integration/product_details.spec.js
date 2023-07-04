describe('example to-do app', () => {
  beforeEach(() => {
    cy.visit('http://0.0.0.0:3000');
  });

  it("Ensure a user can click on a product and go to its  page", () => {
    cy.get('[alt="Cliff Collard"]').click();
    cy.get(".quantity span").contains("in stock at");
  });
});