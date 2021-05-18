.class Lfdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lfda;


# direct methods
.method constructor <init>(Lfda;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lfdh;->a:Lfda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lfdh;->a:Lfda;

    invoke-static {v0}, Lfda;->d(Lfda;)V

    .line 395
    return-void
.end method
