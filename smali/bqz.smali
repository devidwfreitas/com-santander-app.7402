.class Lbqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lbqy;


# direct methods
.method constructor <init>(Lbqy;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lbqz;->a:Lbqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lbqz;->a:Lbqy;

    invoke-virtual {v0}, Lbqy;->cancel()V

    .line 284
    return-void
.end method
