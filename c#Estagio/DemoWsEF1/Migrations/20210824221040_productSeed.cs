using Microsoft.EntityFrameworkCore.Migrations;

namespace DemoWsEF1.Migrations
{
    public partial class productSeed : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PedidoProduto_produtos_ProdutoId",
                table: "PedidoProduto");

            migrationBuilder.DropPrimaryKey(
                name: "PK_produtos",
                table: "produtos");

            migrationBuilder.RenameTable(
                name: "produtos",
                newName: "Produtos");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Produtos",
                table: "Produtos",
                column: "ProdutoId");

            migrationBuilder.InsertData(
                table: "Produtos",
                columns: new[] { "ProdutoId", "Nome", "Preco" },
                values: new object[] { 4, "Estojo", 5.50m });

            migrationBuilder.AddForeignKey(
                name: "FK_PedidoProduto_Produtos_ProdutoId",
                table: "PedidoProduto",
                column: "ProdutoId",
                principalTable: "Produtos",
                principalColumn: "ProdutoId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PedidoProduto_Produtos_ProdutoId",
                table: "PedidoProduto");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Produtos",
                table: "Produtos");

            migrationBuilder.DeleteData(
                table: "Produtos",
                keyColumn: "ProdutoId",
                keyValue: 4);

            migrationBuilder.RenameTable(
                name: "Produtos",
                newName: "produtos");

            migrationBuilder.AddPrimaryKey(
                name: "PK_produtos",
                table: "produtos",
                column: "ProdutoId");

            migrationBuilder.AddForeignKey(
                name: "FK_PedidoProduto_produtos_ProdutoId",
                table: "PedidoProduto",
                column: "ProdutoId",
                principalTable: "produtos",
                principalColumn: "ProdutoId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
