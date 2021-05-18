.class Llck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llcj;


# direct methods
.method constructor <init>(Llcj;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Llck;->a:Llcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Llbc;->a()Llbc;

    move-result-object v0

    .line 70
    iget-object v1, p0, Llck;->a:Llcj;

    invoke-virtual {v0, v1}, Llbc;->a(Llbh;)V

    .line 71
    iget-object v1, p0, Llck;->a:Llcj;

    invoke-virtual {v1}, Llcj;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llbc;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 72
    return-void
.end method
