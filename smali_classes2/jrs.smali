.class Ljrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljrr;


# direct methods
.method constructor <init>(Ljrr;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ljrs;->a:Ljrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ljrr;->b()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "Seguimento Corrente"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :cond_0
    iget-object v1, p0, Ljrs;->a:Ljrr;

    invoke-static {v1, v0}, Ljrr;->a(Ljrr;Ljava/lang/String;)V

    .line 44
    return-void
.end method
