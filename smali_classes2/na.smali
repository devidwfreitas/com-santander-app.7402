.class Lna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmx;


# direct methods
.method constructor <init>(Lmx;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lna;->a:Lmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lna;->a:Lmx;

    iget-object v0, v0, Lmx;->a:Lmr;

    invoke-virtual {v0}, Lmr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    return-void
.end method
