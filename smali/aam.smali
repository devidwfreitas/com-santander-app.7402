.class final Laam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laar;


# direct methods
.method constructor <init>(Laar;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Laam;->a:Laar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Laam;->a:Laar;

    invoke-interface {v0}, Laar;->b()V

    return-void
.end method
