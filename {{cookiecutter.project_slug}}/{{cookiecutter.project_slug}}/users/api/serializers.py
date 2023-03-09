from django.contrib.auth import get_user_model
from django.contrib.auth.models import Group
from rest_framework import serializers

User = get_user_model()

class UserSerializer(serializers.ModelSerializer):
    groups = serializers.SlugRelatedField(queryset=Group.objects.all(), many=True, slug_field='name', required=False)

    class Meta:
        model = User
        fields = ["username", "name", "url", "groups"]

        extra_kwargs = {
            "url": {"view_name": "api:user-detail", "lookup_field": "username"}
        }

    def update(self, instance, validated_data):
        groups_data = validated_data.pop("groups", None)
        instance = super().update(instance, validated_data)

        if groups_data is not None:
            instance.groups.set(groups_data)

        return instance