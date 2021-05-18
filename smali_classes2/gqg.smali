.class Lgqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgqb;


# direct methods
.method constructor <init>(Lgqb;)V
    .locals 0

    .prologue
    .line 1215
    iput-object p1, p0, Lgqg;->a:Lgqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1218
    invoke-static {}, Lgpu;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1219
    return-void
.end method
