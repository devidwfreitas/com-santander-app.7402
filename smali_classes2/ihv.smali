.class public Lihv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lign;
.implements Lihu;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lihf;

.field private c:Ligm;


# direct methods
.method public constructor <init>(Lihf;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lihv;->b:Lihf;

    .line 28
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lihv;->a:Landroid/app/Activity;

    .line 29
    new-instance v0, Ligo;

    iget-object v1, p0, Lihv;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Ligo;-><init>(Lign;Landroid/app/Activity;)V

    iput-object v0, p0, Lihv;->c:Ligm;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lihv;->c:Ligm;

    invoke-interface {v0, p1}, Ligm;->a(I)V

    .line 45
    return-void
.end method

.method public a(Ligk;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lihv;->c:Ligm;

    invoke-interface {v0, p1}, Ligm;->a(Ligk;)V

    .line 40
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ligj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lihv;->b:Lihf;

    invoke-interface {v0, p1}, Lihf;->a(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lihv;->b:Lihf;

    const-string v1, "Obrigado"

    const-string v2, "Muito obrigado por nos ajudar a entender."

    invoke-interface {v0, v1, v2}, Lihf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lihv;->b:Lihf;

    const-string v1, "Caro cliente"

    const-string v2, "Desculpe, n\u00e3o conseguimos enviar seu motivo."

    invoke-interface {v0, v1, v2}, Lihf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lihv;->b:Lihf;

    invoke-interface {v0}, Lihf;->a()V

    .line 71
    iget-object v0, p0, Lihv;->c:Ligm;

    invoke-interface {v0}, Ligm;->a()V

    .line 72
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lihv;->b:Lihf;

    const-string v1, "Caro cliente"

    const-string v2, "Desculpe, n\u00e3o conseguimos cancelar sua proposta neste momento. Tente Novamente mais tarde."

    invoke-interface {v0, v1, v2}, Lihf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lihv;->c:Ligm;

    invoke-interface {v0}, Ligm;->a()V

    .line 35
    return-void
.end method
