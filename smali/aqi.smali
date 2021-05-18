.class Laqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laqe;


# direct methods
.method constructor <init>(Laqe;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Laqi;->a:Laqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Laqi;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Laqi;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    const-string v1, "Cancelar"

    invoke-interface {v0, v1}, Lapa;->b(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method
