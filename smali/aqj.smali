.class Laqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Landroid/support/v7/app/AppCompatDialog;

.field final synthetic c:Laqe;


# direct methods
.method constructor <init>(Laqe;Ljava/io/File;Landroid/support/v7/app/AppCompatDialog;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Laqj;->c:Laqe;

    iput-object p2, p0, Laqj;->a:Ljava/io/File;

    iput-object p3, p0, Laqj;->b:Landroid/support/v7/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Laqj;->c:Laqe;

    iget-object v1, p0, Laqj;->a:Ljava/io/File;

    invoke-static {v0, v1}, Laqe;->b(Laqe;Ljava/io/File;)V

    .line 239
    iget-object v0, p0, Laqj;->b:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->dismiss()V

    .line 240
    return-void
.end method
