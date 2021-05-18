.class public Liqq;
.super Larb;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 902
    iput-object p1, p0, Liqq;->b:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqq;->a:Ljava/lang/String;

    invoke-direct {p0}, Larb;-><init>()V

    .line 904
    iget-object v0, p0, Liqq;->a:Ljava/lang/String;

    iput-object v0, p0, Liqq;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Liqq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Liqq;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Liqq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 908
    new-instance v0, Liqr;

    invoke-direct {v0, p0}, Liqr;-><init>(Liqq;)V

    invoke-static {v0}, Lgkl;->a(Lfoh;)V

    .line 914
    return-void
.end method
