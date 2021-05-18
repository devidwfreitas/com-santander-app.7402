.class Lhvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwq;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhvc;

.field final synthetic c:Lhve;


# direct methods
.method constructor <init>(Lhve;Ljava/lang/String;Lhvc;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lhvi;->c:Lhve;

    iput-object p2, p0, Lhvi;->a:Ljava/lang/String;

    iput-object p3, p0, Lhvi;->b:Lhvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhur;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lhvi;->b:Lhvc;

    invoke-interface {v0}, Lhvc;->a()V

    .line 108
    return-void
.end method

.method public a(Lhuy;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lhvi;->c:Lhve;

    iget-object v1, p0, Lhvi;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lhve;->a(Lhve;Ljava/lang/String;Lhuy;)Lhfn;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lhvi;->b:Lhvc;

    invoke-interface {v1, v0}, Lhvc;->a(Lhgb;)V

    .line 103
    return-void
.end method
