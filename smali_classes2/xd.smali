.class Lxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot;


# instance fields
.field final synthetic a:Lwx;


# direct methods
.method constructor <init>(Lwx;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lxd;->a:Lwx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 195
    check-cast p1, Lov;

    invoke-virtual {p1}, Lov;->b()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lxd;->a:Lwx;

    invoke-static {v1}, Lwx;->c(Lwx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const-string v1, "[^0-9\u02c6/]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 201
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/Calendar;->set(III)V

    .line 203
    iget-object v0, p0, Lxd;->a:Lwx;

    invoke-static {v0}, Lwx;->e(Lwx;)Lace;

    move-result-object v0

    iget-object v2, p0, Lxd;->a:Lwx;

    iget-object v3, p0, Lxd;->a:Lwx;

    invoke-static {v3}, Lwx;->d(Lwx;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lwx;->a(Lwx;Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ljava/util/Calendar;)V

    .line 204
    iget-object v0, p0, Lxd;->a:Lwx;

    iget-object v1, p0, Lxd;->a:Lwx;

    invoke-static {v1}, Lwx;->e(Lwx;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->k()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lwx;->a(Lwx;Ljava/util/Calendar;)V

    .line 206
    iget-object v0, p0, Lxd;->a:Lwx;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lwx;->a(Lwx;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 207
    iget-object v0, p0, Lxd;->a:Lwx;

    invoke-static {v0}, Lwx;->f(Lwx;)V

    .line 208
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lxd;->a:Lwx;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lwx;->a(Lwx;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 213
    iget-object v0, p0, Lxd;->a:Lwx;

    invoke-virtual {v0}, Lwx;->e()Lack;

    move-result-object v0

    new-instance v1, Lxe;

    invoke-direct {v1, p0}, Lxe;-><init>(Lxd;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 224
    return-void
.end method
