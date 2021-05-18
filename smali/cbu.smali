.class public final Lcbu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcbu;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcbs;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcbu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcbu;->a:Ljava/lang/String;

    return-object v0
.end method
