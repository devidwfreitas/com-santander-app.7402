.class Lixe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lixd;


# direct methods
.method constructor <init>(Lixd;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lixe;->a:Lixd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lixe;->a:Lixd;

    iget-object v0, v0, Lixd;->a:Lixa;

    invoke-static {v0, p1}, Lixa;->a(Lixa;Ljava/lang/Object;)V

    .line 65
    return-void
.end method
