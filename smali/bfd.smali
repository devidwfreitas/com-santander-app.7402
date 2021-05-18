.class Lbfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfc;


# direct methods
.method constructor <init>(Lbfc;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lbfd;->a:Lbfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbfd;->a:Lbfc;

    iget-object v0, v0, Lbfc;->b:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-static {v0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->b(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)Lbfg;

    move-result-object v0

    invoke-static {v0}, Lbfg;->a(Lbfg;)V

    .line 90
    iget-object v0, p0, Lbfd;->a:Lbfc;

    iget-object v0, v0, Lbfc;->b:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    invoke-static {v0}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a(Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;)V

    .line 91
    return-void
.end method
