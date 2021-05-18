.class Lbtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lbsp;

.field final synthetic b:Lbtk;


# direct methods
.method constructor <init>(Lbtk;Lbsp;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lbtl;->b:Lbtk;

    iput-object p2, p0, Lbtl;->a:Lbsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lbtl;->a:Lbsp;

    invoke-virtual {v0}, Lbsp;->f()V

    .line 785
    return-void
.end method
