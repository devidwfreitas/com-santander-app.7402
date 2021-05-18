.class Lpz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Lpy;


# direct methods
.method constructor <init>(Lpy;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Lpz;->b:Lpy;

    iput-object p2, p0, Lpz;->a:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lpz;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 1332
    return-void
.end method
