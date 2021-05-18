.class Lkfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lkfd;


# direct methods
.method constructor <init>(Lkfd;II)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lkfe;->c:Lkfd;

    iput p2, p0, Lkfe;->a:I

    iput p3, p0, Lkfe;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lkfe;->c:Lkfd;

    new-instance v1, Lkdg;

    invoke-direct {v1}, Lkdg;-><init>()V

    invoke-static {v0, v1}, Lkfd;->a(Lkfd;Lkdg;)Lkdg;

    .line 186
    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v1

    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->a(Lkfd;)Lkcy;

    move-result-object v0

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-virtual {v0}, Lkdh;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkdg;->f(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v1

    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->a(Lkfd;)Lkcy;

    move-result-object v0

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkdg;->e(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v1

    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->a(Lkfd;)Lkcy;

    move-result-object v0

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-virtual {v0}, Lkdh;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkdg;->g(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v1

    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->a(Lkfd;)Lkcy;

    move-result-object v0

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-virtual {v0}, Lkdh;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkdg;->h(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v1

    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->a(Lkfd;)Lkcy;

    move-result-object v0

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-virtual {v0}, Lkdh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkdg;->c(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v1

    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->a(Lkfd;)Lkcy;

    move-result-object v0

    invoke-virtual {v0}, Lkcy;->a()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdf;

    invoke-virtual {v0}, Lkdf;->c()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lkfe;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-virtual {v0}, Lkdh;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkdg;->d(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lkfe;->c:Lkfd;

    invoke-static {v0}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lkdg;->a(Ljava/lang/String;)V

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkfe;->c:Lkfd;

    invoke-static {v1}, Lkfd;->c(Lkfd;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/previdencia/presentation/AporteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string v1, "aporte"

    iget-object v2, p0, Lkfe;->c:Lkfd;

    invoke-static {v2}, Lkfd;->b(Lkfd;)Lkdg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lkfe;->c:Lkfd;

    invoke-static {v1}, Lkfd;->c(Lkfd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method
