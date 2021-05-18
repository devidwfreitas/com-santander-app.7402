.class public Liy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Liq;

.field private b:Lij;


# direct methods
.method public constructor <init>(Liq;Lij;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Liy;->a:Liq;

    .line 16
    iput-object p2, p0, Liy;->b:Lij;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Liq;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Liy;->a:Liq;

    return-object v0
.end method

.method public b()Lij;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Liy;->b:Lij;

    return-object v0
.end method
