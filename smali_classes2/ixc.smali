.class Lixc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lixb;


# direct methods
.method constructor <init>(Lixb;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lixc;->a:Lixb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lixc;->a:Lixb;

    iget-object v0, v0, Lixb;->b:Lixa;

    invoke-static {v0, p1}, Lixa;->a(Lixa;Ljava/lang/Object;)V

    .line 45
    return-void
.end method
