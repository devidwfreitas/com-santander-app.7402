.class Lmtf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmte;


# direct methods
.method constructor <init>(Lmte;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lmtf;->a:Lmte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 63
    invoke-static {}, Lmwm;->d()V

    .line 64
    iget-object v0, p0, Lmtf;->a:Lmte;

    invoke-static {v0}, Lmte;->g(Lmte;)Lmvf;

    move-result-object v0

    iget-object v1, p0, Lmtf;->a:Lmte;

    .line 65
    invoke-static {v1}, Lmte;->a(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b()I

    move-result v1

    iget-object v2, p0, Lmtf;->a:Lmte;

    .line 66
    invoke-static {v2}, Lmte;->b(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtf;->a:Lmte;

    .line 67
    invoke-static {v3}, Lmte;->c(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmtf;->a:Lmte;

    .line 68
    invoke-static {v4}, Lmte;->d(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmtf;->a:Lmte;

    .line 69
    invoke-static {v5}, Lmte;->e(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmtf;->a:Lmte;

    .line 70
    invoke-static {v6}, Lmte;->f(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-interface/range {v0 .. v6}, Lmvf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
