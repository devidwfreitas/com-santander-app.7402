.class Lijd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lijc;


# direct methods
.method constructor <init>(Lijc;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lijd;->a:Lijc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lijd;->a:Lijc;

    invoke-static {v0}, Lijc;->a(Lijc;)Lnau;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lnau;->a(IZ)V

    .line 55
    return-void
.end method
