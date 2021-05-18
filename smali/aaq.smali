.class final Laaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Laar;


# direct methods
.method constructor <init>(Laar;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Laaq;->a:Laar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Laaq;->a:Laar;

    invoke-interface {v0}, Laar;->b()V

    .line 183
    return-void
.end method
