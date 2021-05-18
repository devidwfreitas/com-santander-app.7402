.class Llbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llbi;


# direct methods
.method constructor <init>(Llbi;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Llbj;->a:Llbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Llbj;->a:Llbi;

    invoke-virtual {v0}, Llbi;->dismiss()V

    .line 82
    return-void
.end method
