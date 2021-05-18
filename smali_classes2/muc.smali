.class Lmuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmtx;


# direct methods
.method constructor <init>(Lmtx;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmuc;->a:Lmtx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmuc;->a:Lmtx;

    invoke-static {v0, p1}, Lmtx;->a(Lmtx;Landroid/view/View;)V

    .line 117
    return-void
.end method
